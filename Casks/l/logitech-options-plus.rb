# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "logitech-options-plus" do
  version "1.84.641293"
  sha256 :no_check

  url "https://download01.logi.com/web/ftp/pub/techsupport/optionsplus/logioptionsplus_installer.zip",
    verified: "download01.logi.com/web/ftp/pub/techsupport/optionsplus/"

  installer manual: "logioptionsplus_installer.app"

  name "Logitech Options Plus"
  desc "Software for Logitech peripherals"
  homepage "https://www.logitech.com/en-ca/software/logi-options-plus.html?utm_campaign=CPX_OptionsPlus&utm_source=InAppMac&utm_medium=app"

  livecheck do
    url "https://support.logi.com/hc/en-ca/articles/1500005516462-Logi-Options-Release-Notes"
    regex(/Version (\d+\.\d+\.\d+)/i)

    strategy :pagematch
  end


  depends_on macos: ">= :sierra"

  uninstall

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
