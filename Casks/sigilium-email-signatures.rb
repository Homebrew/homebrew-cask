cask "sigilium-email-signatures" do
  version "1.3.2"
  sha256 :no_check

  url "https://sigilium.com/apps/sigilium.zip"
  name "Sigilium Email Signatures"
  homepage "https://sigilium.com/"

  livecheck do
    skip "unversioned URL"
  end

  app "Sigilium Email Signatures.app"
end
