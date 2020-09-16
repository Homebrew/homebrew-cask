cask "celldesigner" do
  version "4.4.2"
  sha256 "992a8350756ab8df7a02fab3b0fd76339b0ec6a286db5af4f284664c79a0f2c4"

  url "http://www.systems-biology.org/download/CellDesigner-#{version}-osx-installer.dmg"
  appcast "http://systems-biology.org/software/celldesigner/"
  name "CellDesigner"
  homepage "http://systems-biology.org/software/celldesigner/"

  installer script: {
    executable: "#{staged_path}/CellDesigner-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
  }

  uninstall script: {
    executable: "/Applications/CellDesigner#{version}/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
  },
            delete: "/Applications/CellDesigner#{version}"

  zap trash: [
    "~/.celldesigner",
    "~/.copasi",
    "~/.sbw",
    "~/.oracle_jre_usage",
  ]

  caveats do
    depends_on_java "6+"
  end
end
