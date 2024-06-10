cask "macsymbolicator" do
  version "2.6"
  sha256 "d92f53c23e69997974df3944aa9ab5feb0d9c320dce3e13b2e7088677cd2b509"

  url "https://github.com/inket/MacSymbolicator/releases/download/#{version}/MacSymbolicator.zip"
  name "MacSymbolicator"
  desc "Symbolicate Apple related crash reports"
  homepage "https://github.com/inket/MacSymbolicator/"

  depends_on macos: ">= :mojave"

  app "MacSymbolicator.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.mahdi.macsymbolicator.sfl*",
    "~/Library/Caches/jp.mahdi.MacSymbolicator",
    "~/Library/HTTPStorages/jp.mahdi.MacSymbolicator",
    "~/Library/Preferences/jp.mahdi.MacSymbolicator.plist",
  ]
end
