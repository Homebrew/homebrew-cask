cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "26.2.5"
  sha256 arm:   "26e8e5b9f8803d2cde146310ea4e6ddea5c3fd6a1df5f1f6f06136c87145cca9",
         intel: "a330727b8388a072f92d28ecbfb2da0b9c148e48eb66164aa8b6880cbed4d44f"

  url "https://github.com/nkallen/plasticity/releases/download/v#{version}/Plasticity-darwin-#{arch}-#{version}.zip"
  name "Plasticity"
  desc "3D modeling software for concept artists and designers"
  homepage "https://www.plasticity.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Plasticity.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.plasticity.sfl*",
        "~/Library/Application Support/Plasticity",
        "~/Library/Logs/Plasticity",
        "~/Library/Preferences/com.electron.plasticity.plist",
      ],
      rmdir: "~/.plasticity"
end
