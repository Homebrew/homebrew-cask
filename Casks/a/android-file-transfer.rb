cask "android-file-transfer" do
  version "5071136"
  sha256 "b9249399a351e8146358ff1ddb546c68a63134b780be795ae64e0a4c2258bc61"

  url "https://dl.google.com/dl/androidjumper/mtp/#{version}/androidfiletransfer.dmg",
      verified: "google.com/dl/androidjumper/"
  name "Android File Transfer"
  desc "Transfer files from and to an Android smartphone"
  homepage "https://www.android.com/filetransfer/"

  livecheck do
    url "https://dl.google.com/dl/androidjumper/mtp/current/androidfiletransfer.dmg"
    strategy :header_match do |headers|
      headers["location"][%r{/(\d+)/androidfiletransfer\.dmg}i, 1]
    end
  end

  app "Android File Transfer.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.android.mtpviewer.sfl*",
        "~/Library/Application Support/Google/Android File Transfer",
        "~/Library/Preferences/com.google.android.mtpviewer.plist",
      ],
      rmdir: "~/Library/Application Support/Google"

  caveats do
    requires_rosetta
  end
end
