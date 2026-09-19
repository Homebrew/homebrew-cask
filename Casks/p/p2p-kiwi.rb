cask "p2p-kiwi" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "3.0.1"
  sha256 arm:          "87c3e448d36a5e561fd0d3b4033483587d08a7cccbfa8e026d8643e89f8b95e6",
         intel:        "87c3e448d36a5e561fd0d3b4033483587d08a7cccbfa8e026d8643e89f8b95e6",
         arm64_linux:  "9a9ca51cd70ac4941b33ae8540395ac2fbab9b89346d360700a8b3793356b5ae",
         x86_64_linux: "71d337d98c5551b026fe9271cbc7a56172fb39f670ce01cb777303a311526675"

  on_macos do
    depends_on macos: :ventura

    app "p2p.kiwi.app"

    zap trash: [
      "~/Library/Application Support/bananas",
      "~/Library/Preferences/net.getbananas.app.plist",
      "~/Library/Saved Application State/net.getbananas.app.savedState",
    ]
  end
  on_linux do
    app_image "p2p-kiwi_#{arch}.AppImage", target: "p2p.kiwi.AppImage"
  end

  url "https://github.com/dont-be-evil-company/p2p.kiwi/releases/download/v#{version}/p2p-kiwi_#{url_end}"
  name "p2p.kiwi"
  desc "Cross-platform screen sharing tool"
  homepage "https://p2p.kiwi/"
end
