cask "master-password" do
  version :latest
  sha256 :no_check

  url "http://www.masterpasswordapp.com/masterpassword-mac.zip"
  name "Master Password"
  desc "Stateless password management solution"
  homepage "http://www.masterpasswordapp.com/"

  app "Master Password.app"

  uninstall quit: "com.lyndir.lhunath.MasterPassword.Mac"

  zap trash: [
    "~/Library/Application Scripts/com.lyndir.lhunath.MasterPassword.Mac",
    "~/Library/Application Scripts/com.lyndir.lhunath.MasterPassword.Mac.LoginHelper",
    "~/Library/Containers/com.lyndir.lhunath.MasterPassword.Mac",
    "~/Library/Containers/com.lyndir.lhunath.MasterPassword.Mac.LoginHelper",
    "~/Library/Group Containers/HL3Q45LX9N.com.lyndir.lhunath.MasterPassword.Mac",
  ]
end
