cask "sage" do
  if MacOS.version <= :mojave
    version "9.1,10.11.6"
    sha256 "23c13690b8a72deca1628dd0e66a0f7b83557f98c13c3db1dc7eb15d80cf3a8d"
  else
    version "9.2,10.15.7"
    sha256 "fa6eb93368d4f7c220cbdd7a1483c1ef9d9b718b0f179c17c2acf14fb74f10c1"
  end

  url "https://mirrors.mit.edu/sage/osx/intel/sage-#{version.before_comma}-OSX_#{version.after_comma}-x86_64.app.dmg",
      verified: "mirrors.mit.edu/sage/osx/intel/"
  appcast "https://mirrors.mit.edu/sage/osx/intel/index.html"
  name "Sage"
  homepage "https://www.sagemath.org/"

  depends_on macos: ">= :el_capitan"

  app "SageMath-#{version.before_comma}.app"
  binary "#{appdir}/SageMath-#{version.before_comma}.app/Contents/Resources/sage/sage"

  uninstall quit: "org.sagemath.Sage"

  zap trash: [
    "~/.sage",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.sagemath.sage.sfl*",
    "~/Library/Logs/sage.log",
    "~/Library/Preferences/org.sagemath.Sage.plist",
  ]
end
