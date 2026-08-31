cask "deskreen" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "Deskreen", linux: "deskreen"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.2.16"
  sha256 arm:          "09a3be94f5fa2afc13e9098b8f6ad1f3285cf41f6f7a0de64a529944398d9177",
         intel:        "bc36361d6a8251e4bc8a93575de27d321708873ac4f8f6f34e990ddae39e9b43",
         arm64_linux:  "143673dc06abcfd8fca6968b3ba0b522154aafb0e7b3bedf2dd41009a0a82a0d",
         x86_64_linux: "25c54a448344587257ce977288c4b3c7e729fc1cc7061ad7471622cd09a47ab2"

  on_macos do
    depends_on macos: :big_sur

    app "Deskreen CE.app"

    zap trash: [
      "~/Library/Application Support/Deskreen",
      "~/Library/Logs/Deskreen",
      "~/Library/Preferences/com.pavlobu.Deskreen.plist",
      "~/Library/Saved Application State/com.pavlobu.Deskreen.savedState",
    ]
  end
  on_linux do
    app_image "deskreen-ce-#{version}-#{arch}.AppImage", target: "Deskreen.AppImage"
  end

  url "https://github.com/pavlobu/deskreen/releases/download/v#{version}/#{os}-ce-#{version}-#{arch}.#{url_end}"
  name "Deskreen"
  desc "Turns any device with a web browser into a secondary screen"
  homepage "https://deskreen.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
