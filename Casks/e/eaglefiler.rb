cask "eaglefiler" do
  version "1.9.13"
  sha256 "4e008f28248186253e0c7872419d6473b70704dcc8874026c3ea5c9db930b7fa"

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name "EagleFiler"
  desc "Organise files, archive e-mails, save Web pages and notes, search everything"
  homepage "https://c-command.com/eaglefiler/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/EagleFiler[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "EagleFiler.app"

  zap trash: [
    "~/Library/Application Scripts/com.c-command.EagleFiler.EagleFilerShare",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.c-command.eaglefiler.sfl*",
    "~/Library/Application Support/EagleFiler",
    "~/Library/Caches/com.c-command.EagleFiler",
    "~/Library/Containers/com.c-command.EagleFiler.EagleFilerShare",
    "~/Library/HTTPStorages/com.c-command.EagleFiler",
    "~/Library/Logs/EagleFiler",
    "~/Library/PDF Services/Save PDF to EagleFiler",
    "~/Library/Preferences/com.c-command.EagleFiler.plist",
    "~/Library/Saved Application State/com.c-command.EagleFiler.savedState",
  ]
end
