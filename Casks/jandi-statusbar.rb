cask "jandi-statusbar" do
  version "1.12"
  sha256 "65db1d0f7a4c2cff8097dad6fcfe4f7c7a57124bfb5358fe1f7996b977f7934f"

  url "https://github.com/techinpark/Jandi/releases/download/v#{version}/jandi.dmg"
  name "jandi"
  desc "Github Contributions in your status bar"
  homepage "https://github.com/techinpark/Jandi"

  livecheck do
    skip "No reliable way to get version info"
  end

  app "jandi.app"

  zap trash: [
    "~/Library/Caches/com.tmsae.jandi",
    "~/Library/Preferences/com.tmsae.jandi.plist",
  ]
end
