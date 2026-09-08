cask "bugdom" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "mac.dmg", linux: "linux-#{arch}.AppImage"

  version "1.3.4"

  on_macos do
    sha256 "9797091290e29336e74f8d3692589acd5accc53bccf085e6aeb8636552349644"

    app "Bugdom.app"
    artifact "Documentation", target: "~/Library/Application Support/Bugdom"

    zap trash: [
      "~/Library/Preferences/Bugdom",
      "~/Library/Saved Application State/io.jor.bugdom.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "e9751d454f9fcd2be4eaad1431f57ce68e0b94b9954e1abc9a05023c3ce0a31f",
           x86_64_linux: "b17cd2366a2aedfd727b22ab4154ced83994cf90e0a408acbdf0d0d53b4ad6d5"

    app_image "Bugdom-#{version}-linux-#{arch}.AppImage", target: "Bugdom.AppImage"
  end

  url "https://github.com/jorio/Bugdom/releases/download/#{version}/Bugdom-#{version}-#{url_end}"
  name "Bugdom"
  desc "Bug-themed 3D action/adventure game from Pangea Software"
  homepage "https://jorio.itch.io/bugdom"
end
