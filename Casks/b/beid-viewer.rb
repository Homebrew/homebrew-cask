cask "beid-viewer" do
  version "5.1.31"
  sha256 "afa0795da0c1d49b4af0c9de0f38a6f66c4930ab4cc785822ca2eb7fd8773b5b"

  url "https://eid.belgium.be/sites/default/files/software/eID%20Viewer-#{version}.dmg"
  name "Belgian eID Viewer"
  desc "Belgian ID card reader"
  homepage "https://eid.belgium.be/"

  livecheck do
    url "https://eid.belgium.be/en/download/22/license"
    regex(/href=.*?eID(?:(?:%20|\s)+|[._-])?Viewer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :sonoma
  depends_on cask: "beid-token"

  app "eID Viewer.app"

  zap trash: [
    "~/Library/Caches/be.fedict.eid.eID-Viewer",
    "~/Library/HTTPStorages/be.fedict.eid.eID-Viewer",
  ]
end
