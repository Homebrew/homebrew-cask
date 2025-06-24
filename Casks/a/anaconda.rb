cask "anaconda" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.06-0"
  sha256 arm:   "195f234204e2f18803cea38bbebefcaac5a3d8d95e2e4ee106d1b87b23b9fc4a",
         intel: "8625a155ff1d2848afa360e70357e14c25f0ac7ac21e4e4bf15015bc58b08d06"

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
    "~/.anaconda",
    "~/.conda",
    "~/.condarc",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.io.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.continuum.python.sfl*",
  ]

  caveats do
    files_in_usr_local
  end
end
