cask "anaconda" do
  version "2021.05"
  sha256 "0407bee87eeecad521f1e38eb607b0a85babef4c1b47516dc5c090e152eba5d5"

  url "https://repo.anaconda.com/archive/Anaconda3-#{version}-MacOSX-x86_64.sh"
  name "Continuum Analytics Anaconda"
  desc "Distribution of the Python and R programming languages for scientific computing"
  homepage "https://www.anaconda.com/"

  livecheck do
    url "https://repo.anaconda.com/archive/"
    regex(/Anaconda3-(\d+(?:\.\d+)*)-MacOSX-x86_64\.sh/i)
  end

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
