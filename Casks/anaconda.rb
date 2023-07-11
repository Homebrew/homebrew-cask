cask "anaconda" do
  arch arm: "arm64", intel: "x86_64"

  version "2023.07-0"
  sha256 arm:   "23a9deb80acb145c65375bd73cbaa8793be81447278c4db7be50ef7c32a58635",
         intel: "b6ea24fe16544d5b2d5adf6c913c1fc89a6dbdef12a4caff76ff574b33d0f3cb"

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
