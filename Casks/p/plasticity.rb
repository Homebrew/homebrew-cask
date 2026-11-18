cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "26.2.9"
  sha256 arm:   "630647bff92cc6aaf706a80eab48aa66855c1c0e4962ede092c72d81065b2bf2",
         intel: "2bdb3da9a66c19dac0bd2235083064ad088141db6537ec4ae97e1b00bd3de897"

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
