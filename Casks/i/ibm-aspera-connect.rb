cask "ibm-aspera-connect" do
  arch arm: "arm64", intel: "x86_64"
  folder = on_arch_conditional arm: "0csnb", intel: "0cz9h"
  livecheck_arch = on_arch_conditional arm: "_arm64"

  on_arm do
    version "4.2.13.820"
    sha256 "58b42f814c95168e149491d330acb286920fcc19c581e958168305b78c8aa478"
  end
  on_intel do
    version "4.2.14.855-HEAD"
    sha256 "3b1d2fefe897e4e04b2ff68f26220e2e75c93cf566b8504048f72076b42da23d"
  end

  url "https://delivery04-mul.dhe.ibm.com/sar/CMA/OSA/#{folder}/0/ibm-aspera-connect_#{version}_macOS_#{arch}.pkg"
  name "IBM Aspera Connect"
  desc "Facilitate uploads and downloads with an Aspera transfer server"
  homepage "https://www.ibm.com/aspera/connect/"

  livecheck do
    url "https://www.ibm.com/support/fixcentral/swg/selectFixes", post_form: {
      product:    "ibm/Other software/IBM Aspera Connect",
      platform:   "macOS",
      showStatus: "false",
    }
    regex(/ibm[._-]aspera[._-]connect[._-]v?(\d+(?:\.\d+)+(?:[._-]HEAD)?)[._-]macOS#{livecheck_arch}/i)
  end

  pkg "ibm-aspera-connect_#{version}_macOS_#{arch}.pkg"

  uninstall pkgutil: [
    "com.ibm.software.aspera.connect",
    "com.ibm.software.aspera.crypt",
    "com.ibm.software.aspera.launcher",
  ]

  zap trash: [
    "~/Library/Application Scripts/com.aspera.connect.SafariExtension",
    "~/Library/Application Scripts/com.aspera.drive.SendToExtension",
    "~/Library/Containers/com.aspera.connect.SafariExtension",
    "~/Library/Containers/com.aspera.drive.SendToExtension",
    "~/Library/Group Containers/group.com.aspera.connect",
    "~/Library/Logs/Aspera_Connect",
    "~/Library/Preferences/com.aspera.connect.plist",
    "~/Library/Saved Application State/com.aspera.connect.savedState",
  ]
end
