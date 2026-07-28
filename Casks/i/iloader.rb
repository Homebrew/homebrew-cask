cask "iloader" do
  os macos: "darwin", linux: "linux"

  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "2.2.8"

  artifact = on_system_conditional linux: "iloader-#{os}-#{arch}.AppImage",
                                   macos: "iloader-#{os}-universal.dmg"

  url "https://github.com/nab138/iloader/releases/download/v#{version}/#{artifact}",
      verified: "github.com/nab138/iloader/"
  name "iloader"
  desc "iOS Sideloading Companion"
  homepage "https://iloader.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    sha256 "0845132b12f3ab20a6e88fde802b63a04eab32c979edaafca5fffd592e3dc137"

    auto_updates true
    app "iloader.app"

    zap trash: "~/Library/Application Support/me.nabdev.iloader"
  end

  on_linux do
    sha256 arm64_linux:  "599b0c33c6bd3bb15cfa38a7fe3b85929b6ad353757c41e437ec44f9b932274e",
           x86_64_linux: "84a1a557bf2c35f4bc8084977fe74bea4e2e560253aee5a9e1501d7c49664ec1"

    app_image artifact, target: "iloader.AppImage"
  end
end
