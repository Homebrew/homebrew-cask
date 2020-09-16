cask "qfinder-pro" do
  version "7.4.0.0731"
  sha256 "6874e0e728e15d9271edf001dfdb1e857e9d0a4b161d6d5dd459dee084124205"

  url "https://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://update.qnap.com/SoftwareRelease.xml&splitter_1=Mac_for_QT&index_1=1&splitter_2=downloadURL&index_2=1"
  name "Qnap Qfinder Pro"
  desc "NAS management application"
  homepage "https://www.qnap.com/en/utilities#utliity_5"

  pkg "Qfinder Pro.pkg"

  uninstall pkgutil: [
    "qnap.com.qfinder.*",
    "qnap.com.Qfinder",
  ],
            delete:  [
              "/Applications/Qfinder Pro.app",
              "/Applications/Qfinder Pro.app/Contents/Resources/Qfinder Pro.app",
            ]
end
