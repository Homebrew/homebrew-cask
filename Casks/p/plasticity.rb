cask "plasticity" do
  arch arm: "arm64", intel: "x64"

  version "26.2.8"
  sha256 arm:   "72d9cb507886b871c1e5d7c867b51a1f03ff8201ca2abb34f6bbdc039780589c",
         intel: "e317fe28342a358ca4db7919bc40be7fc9602195d428455ed63908b973dfbc59"

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
