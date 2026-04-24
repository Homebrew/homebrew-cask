cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "3.3.9,260414arntem6p0"
  sha256 arm:          "d329fcab1f8c21f661e639d5b414a0a8ffd68fe5fc537d18e347df12d12c4b9d",
         intel:        "06a561a4b4ec7bbeb9fc63cb9522c2a3d8b4477ac4dded0740c46ea9dd0359c9",
         x86_64_linux: "4be7119654253e5f96e12e33229f8c4d113913f0f012bf34cba59d997941dbcd"

  on_macos do
    url "https://download.todesktop.com/2003096gmmnl0g1/Sunsama%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
        verified: "download.todesktop.com/2003096gmmnl0g1/"

    depends_on macos: ">= :monterey"

    app "Sunsama.app"
  end

  on_linux do
    url "https://download.todesktop.com/2003096gmmnl0g1/sunsama-#{version.csv.first}-build-#{version.csv.second}-x86_64.AppImage",
        verified: "download.todesktop.com/2003096gmmnl0g1/"

    container type: :naked

    binary "sunsama-#{version.csv.first}-build-#{version.csv.second}-x86_64.AppImage", target: "sunsama"

    postflight do
      desktop = Pathname("#{Dir.home}/.local/share/applications/sunsama.desktop")
      desktop.dirname.mkpath
      desktop.write <<~EOS
        [Desktop Entry]
        Name=Sunsama
        Exec=#{HOMEBREW_PREFIX}/bin/sunsama %U
        Type=Application
        Categories=Office;
      EOS
    end

    uninstall_postflight do
      desktop = Pathname("#{Dir.home}/.local/share/applications/sunsama.desktop")
      desktop.unlink if desktop.exist?
    end
  end

  name "Sunsama"
  desc "Daily planner and calendar"
  homepage "https://www.sunsama.com/desktop"

  livecheck do
    url "https://download.todesktop.com/2003096gmmnl0g1/latest-mac.yml"
    regex(/Build[ ._-]([^-]+)[._-]/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{yaml["version"]},#{match[1]}"
      end
    end
  end

  auto_updates true

  on_macos do
    zap trash: [
      "~/Library/Application Support/Sunsama",
      "~/Library/Logs/Sunsama",
      "~/Library/Preferences/com.sunsama.native-app.plist",
      "~/Library/Saved Application State/com.sunsama.native-app.savedState",
    ]
  end

  on_linux do
    zap trash: "~/.config/Sunsama"
  end
end
