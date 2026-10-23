cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "26.2.0"
  sha256 arm:   "c41574a4e27e3a10ec2615c101b290145a674112c7a993fc867adfb21a7bdf43",
         intel: "10fb5dc5b54228dc1c86d697a743c3be920eb9b282b7c5c550e6140d2e2272e7"

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
