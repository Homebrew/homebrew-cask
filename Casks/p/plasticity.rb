cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "26.2.4"
  sha256 arm:   "6eb7a0e5b6396f986d9f3f0cdbe8790978714474d6ae3aba903a716416be906d",
         intel: "d470432d68905176c01774fd38fd14c1d15c40a25f74d282fef94481f8ab12f1"

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
