cask "inkscape" do
  arch arm: "_arm64", intel: on_system_conditional(macos: "_x86_64")
  livecheck_folder = on_system_conditional macos: "mac-os-x", linux: "gnulinux/appimage"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.4.4"
  sha256 arm:          "eacca94ab01e59467cdd5452a2867c3734450f9a4cfb3346956cc9b07f34f3f1",
         intel:        "17ff9f49b60115237cad9b60605950e26b11b04600e726a4513224aa373aee11",
         x86_64_linux: "d217fe05c92faaed5c3af46856b6299c98933dc722819cb5bc2ca052c5522166"

  on_macos do
    depends_on macos: :big_sur

    app "Inkscape.app"
    command_wrapper "inkscape", executable: "#{appdir}/Inkscape.app/Contents/MacOS/inkscape"

    zap trash: [
      "~/.config/inkscape",
      "~/Library/Application Support/Inkscape",
      "~/Library/Application Support/org.inkscape.Inkscape",
      "~/Library/Caches/org.inkscape.Inkscape*",
      "~/Library/Preferences/org.inkscape.Inkscape.plist",
      "~/Library/Saved Application State/org.inkscape.Inkscape.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Inkscape-#{version.csv.first}.AppImage", target: "Inkscape.AppImage"
  end

  url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version.csv.second || version.csv.first}#{arch}.#{url_end}"
  name "Inkscape"
  desc "Vector graphics editor"
  homepage "https://inkscape.org/"

  # Inkscape releases use a version format like 1.4, 1.4.1, etc. but the file
  # name version can sometimes use a longer number (e.g. 1.4.230579 for 1.4.2,
  # 1.3.0 for 1.3, etc.).
  livecheck do
    url "https://inkscape.org/release/all/#{livecheck_folder}/"
    regex(%r{/inkscape[._-]v?(\d+(?:\.\d+)+)/?["' >].*?Inkscape[._-]v?(\d+(?:\.\d+)+)#{arch}\.#{url_end}}im)
    strategy :page_match do |page, regex|
      # Match within individual row elements to ensure the regex doesn't capture
      # a release version and file name version from separate releases
      page.scan(%r{<tr[^>]*?>(.*?)</tr>}im).filter_map do |row|
        match = row[0].match(regex)
        next unless match

        (match[1] == match[2]) ? match[1] : "#{match[1]},#{match[2]}"
      end
    end
  end
end
