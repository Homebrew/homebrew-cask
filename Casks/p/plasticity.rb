cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "26.2.6"
  sha256 arm:   "40afd5cc4f14d016706d50975be81d43cdf1e0356824457147bdf421e7d82d35",
         intel: "f9e89b31ae135423175175d04fe0d0466cad974e40f91a2bb38c4eb2a2b06aa2"

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
