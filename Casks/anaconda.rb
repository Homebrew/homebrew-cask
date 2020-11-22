cask "anaconda" do
  version "2020.11"
  sha256 "ec11e325c792a6f49dbdbe5e641991d0a29788689176d7e54da97def9532c762"

  url "https://repo.anaconda.com/archive/Anaconda3-#{version}-MacOSX-x86_64.sh"
  name "Continuum Analytics Anaconda"
  homepage "https://www.anaconda.com/"

  auto_updates true
  container type: :naked

  installer script: {
    executable: "Anaconda3-#{version}-MacOSX-x86_64.sh",
    args:       ["-b", "-p", "#{HOMEBREW_PREFIX}/anaconda3"],
    sudo:       true,
  }

  postflight do
    set_ownership "#{HOMEBREW_PREFIX}/anaconda3"
  end

  uninstall delete: [
    "#{HOMEBREW_PREFIX}/anaconda3",
    "/Applications/Anaconda-Navigator.app",
  ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.io.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.python.sfl*",
    "~/.anaconda",
    "~/.conda",
    "~/.condarc",
  ]

  caveats do
    files_in_usr_local
  end
end
