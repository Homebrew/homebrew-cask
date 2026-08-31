cask "bruno" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "4.1.0"
  sha256 arm:          "31af43035099556492ce2196a87e88234caafdc897ccc2c9bfa62a321fc5df8e",
         intel:        "f936a42ca8177386c1b392111a2bf374876c35a09e3089691f4f1a79eabf4b6e",
         arm64_linux:  "7f08392501125d33800fa2b7762465234dce35933d38787da562b65c37197406",
         x86_64_linux: "50deeed474542745b69ddb5bde3667dead0c93ff0d76e0d39526ae36cd234c92"

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "Bruno.app"

    zap trash: [
      "~/Library/Application Support/bruno",
      "~/Library/Preferences/com.usebruno.app.plist",
      "~/Library/Saved Application State/com.usebruno.app.savedState",
    ]
  end
  on_linux do
    app_image "bruno_#{version}_#{arch}_linux.AppImage"
  end

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_#{os}.#{url_end}"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
