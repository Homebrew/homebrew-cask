cask "fluor" do
  version "2.1.0"
  sha256 "92034b630bf5a19eca160054c780a3c1767f21def3c02f28787f79fed5fab757"

  url "https://resources.pyrolyse.it/distrib/Fluor/Fluor%20#{version}.dmg",
      verified: "pyrolyse.it/"
  appcast "https://fluorapp.net/"
  name "Fluor"
  homepage "https://fluorapp.net/"

  livecheck do
    url :homepage
    regex(/href=.*?Fluor(?:%20|[._-])v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Fluor.app"

  uninstall quit: "com.pyrolyse.Fluor"

  zap trash: "~/Library/Preferences/com.pyrolyse.Fluor.plist"
end
