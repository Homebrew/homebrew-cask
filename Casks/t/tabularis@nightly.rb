cask "tabularis@nightly" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.31.1-2,20261105-dc919d0"
  sha256 arm:          "2b6fe280545a725de89270f59fee705a649ca89d9ae644766d4237fe5db14dde",
         intel:        "72921aef38b3e1d793e1a835b6662e850b01ed7f8df2633531019b1017915937",
         x86_64_linux: "80c6f0d99effb8dcdba95176f6e98f58f386f961480685fc014d3be160f7be4f"

  on_macos do
    depends_on macos: :monterey

    app "tabularis.app"

    zap trash: [
      "~/Library/Application Support/tabularis",
      "~/Library/Caches/tabularis",
      "~/Library/Logs/tabularis",
      "~/Library/Preferences/com.debba.tabularis.plist",
      "~/Library/Saved Application State/com.debba.tabularis.savedState",
      "~/Library/WebKit/tabularis",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "tabularis_#{version.csv.first}_#{arch}.AppImage", target: "tabularis.AppImage"

    zap trash: [
      "~/.config/tabularis",
      "~/.local/share/applications/tabularis-handler.desktop",
      "~/.local/share/tabularis",
    ]
  end

  url "https://github.com/TabularisDB/tabularis/releases/download/nightly-#{version.csv.second}/tabularis_#{version.csv.first}_#{arch}.#{os}"
  name "Tabularis Nightly"
  desc "Lightweight database management tool"
  homepage "https://tabularis.dev/"

  livecheck do
    url "https://github.com/TabularisDB/tabularis/releases"
    regex(%r{/nightly[._-]([^/]+)/tabularis[._-](.+)[._-]#{arch}\.#{os}}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]
        next unless release["tag_name"]&.start_with?("nightly")

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next unless match

          "#{match[2]},#{match[1]}"
        end
      end.flatten
    end
  end

  auto_updates true
  conflicts_with cask: "tabularis"
end
