cask "escrow-buddy" do
  version "1.0.0"
  sha256 "bf1f0dac3a9418eaa71fa7c819b8a788c86fd09a1b14148016088bce2791064d"

  url "https://github.com/macadmins/escrow-buddy/releases/download/v#{version}/Escrow.Buddy-#{version}.pkg"
  name "Escrow Buddy"
  desc "Escrows FileVault recovery keys at the login window"
  homepage "https://github.com/macadmins/escrow-buddy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  pkg "Escrow.Buddy-1.0.0.pkg"

  uninstall pkgutil: "com.netflix.Escrow-Buddy"
end
