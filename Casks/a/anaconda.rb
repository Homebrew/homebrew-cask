cask "anaconda" do
  arch arm: "arm64", intel: "x86_64"

  version "2023.09-0"
  sha256 arm:   "34121775d9e30a6ea12af0a462e1881670b0c175b426e06fd7b1581625ebd69b",
         intel: "0c64a2c634fe31335079d97340c277c81b3f0c9dfe862a06599570640ac897a4"

  url "https://repo.anaconda.com/archive/Anaconda3-#{version}-MacOSX-#{arch}.sh"
  name "Anaconda Distribution"
  desc "Distribution of the Python and R programming languages for scientific computing"
  homepage "https://www.anaconda.com/"

  livecheck do
    url "https://repo.anaconda.com/archive/"
    regex(/Anaconda3-(\d+(?:\.\d+)+[._-]*\d+)-MacOSX-#{arch}\.sh/i)
  end

  auto_updates true
  container type: :naked

  installer script: {
    executable: "Anaconda3-#{version}-MacOSX-#{arch}.sh",
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
