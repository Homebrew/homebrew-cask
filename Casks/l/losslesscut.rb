cask "losslesscut" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.69.0"
  sha256 arm:          "c7801b482df3be0384acc8171d5a7d16cce70d1588871e344b155aaca39fa58b",
         intel:        "ab828d1a652c895661b15b682d81106562e0f11fabcb8c2d1e4bf2c4fdddf64a",
         x86_64_linux: "179eaae27bffbe25a6549a4a714474126b57c288cefc307046fc9c6313a12676"

  on_macos do
    depends_on macos: :monterey

    app "LosslessCut.app"

    zap trash: [
      "~/Library/Application Support/LosslessCut",
      "~/Library/Logs/LosslessCut",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "LosslessCut-linux-x86_64.AppImage", target: "LosslessCut.AppImage"

    zap trash: "~/.config/LosslessCut"
  end

  url "https://github.com/mifi/lossless-cut/releases/download/v#{version}/LosslessCut-#{os}-#{arch}.#{url_end}"
  name "LosslessCut"
  desc "Trims video and audio files losslessly"
  homepage "https://github.com/mifi/lossless-cut"

  livecheck do
    url :url
    strategy :github_latest
  end
end
