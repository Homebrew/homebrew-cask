cask "aya" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.14.2"

  on_macos do
    sha256 arm:   "44343bea5e4bcbba09deae815698765a7831bfcde358bf6a32a5f5162619577d",
           intel: "45411d655f18eb06b60e7d29f102fbcc3ac56fc2028caf3e86fb47ec8fd9f9c2"

    app "AYA.app"

    zap trash: [
      "~/Library/Application Support/AYA",
      "~/Library/Preferences/io.liriliri.aya.plist",
    ]
  end
  on_linux do
    sha256 "27ac157324191973c121250c1f2bbaeee8fbff626cffd309605a1b7c1c2f6967"

    depends_on arch: :x86_64

    app_image "AYA-#{version}-linux-#{arch}.AppImage", target: "AYA.AppImage"
  end

  url "https://github.com/liriliri/aya/releases/download/v#{version}/AYA-#{version}-#{os}-#{arch}.#{url_end}"
  name "AYA"
  desc "Android ADB desktop app"
  homepage "https://aya.liriliri.io/"
end
