cask "artisan" do
  arch arm: "arm", intel: "intel"
  os_arch = on_system_conditional macos: "mac-#{arch}", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "5.0.0"
  sha256 arm:          "ea491952b75a3e87de47a29d4b3a131d0105aa89c6e0dd46bc81733b9a4fcb4c",
         intel:        "a936efaed6fe4cf93fbdea1f06a85b722294eff8d8996767521deb49d76a6bdc",
         x86_64_linux: "9a09ef896a491b47f719e4531a71cd8cfa1d7582fb55a29b62e1f1cef30f1227"

  on_macos do
    on_arm do
      depends_on macos: :sonoma
    end
    on_intel do
      depends_on macos: :ventura
    end

    app "artisan.app"

    zap trash: [
      "~/Library/Application Support/artisan-scope",
      "~/Library/Preferences/org.artisan-scope.Artisan.plist",
      "~/Library/Saved Application State/org.artisan-scope.artisan.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "artisan-linux-#{version}.AppImage", target: "Artisan.AppImage"

    zap trash: [
      "~/.config/artisan-scope",
      "~/.local/share/artisan-scope",
    ]
  end

  url "https://github.com/artisan-roaster-scope/artisan/releases/download/v#{version}/artisan-#{os_arch}-#{version}.#{url_end}"
  name "Artisan"
  desc "Visual scope for coffee roasters"
  homepage "https://artisan-scope.org/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
