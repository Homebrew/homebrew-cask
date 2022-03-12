cask "archiver" do
  version "4.0.0"
  sha256 "691c9747056c8706626c92ebd679578af6f6060e8d481dc3b5925dd3522b2b53"

  url "https://storage.googleapis.com/incrediblebee/apps/Archiver-#{version.major}/Archiver-#{version}.zip",
      verified: "storage.googleapis.com/incrediblebee/"
  name "Archiver"
  desc "Open archives, compress files, as well as split and combine files"
  homepage "https://archiverapp.com/"

  livecheck do
    url "https://api.incrediblebee.com/appcasts/archiver-#{version.major}.xml"
    regex(%r{url=.*?/Archiver-(\d+(?:\.\d+)+)\.zip}i)
  end

  depends_on macos: ">= :sierra"

  app "Archiver.app"

  zap trash: [
    "~/Library/Application Support/com.incrediblebee.Archiver*",
    "~/Library/Preferences/com.incrediblebee.Archiver*.plist",
  ]
end
