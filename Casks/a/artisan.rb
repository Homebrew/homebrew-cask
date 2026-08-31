cask "artisan" do
  arch arm: "arm", intel: "intel"
  os_arch = on_system_conditional macos: "mac-#{arch}", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "4.2.0"

  on_macos do
    sha256 arm:   "ef4abc2a8db4efee94d89703d150b033555f3c19164ba34665ba39854e1492a2",
           intel: "d152a64f41145807af248336971378be974c67db4b51194acc5606a15e4d68c6"

    on_arm do
      depends_on macos: :sonoma
    end
    on_intel do
      depends_on macos: :ventura
    end

    app "Artisan.app"

    zap trash: [
      "~/Library/Application Support/artisan-scope",
      "~/Library/Preferences/org.artisan-scope.Artisan.plist",
      "~/Library/Saved Application State/org.artisan-scope.artisan.savedState",
    ]
  end
  on_linux do
    sha256 "e2f85dc7ded8f27b63e075364ffa47abf6608a8798d328bec9d55c0c5ac746b4"

    depends_on arch: :x86_64

    app_image "artisan-linux-#{version}.AppImage", target: "Artisan.AppImage"
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
