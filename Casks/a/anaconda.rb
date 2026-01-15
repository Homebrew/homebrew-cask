cask "anaconda" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "2025.12-2"
    sha256 "8d0b858358456d4ee159feb0c4ee6d635590b777f8b9ffa4aa7553c469aae2b6"
  end
  on_intel do
    version "2025.06-1"
    sha256 "58139fe195337f3041259e3a611339ed3afa4d164cc9aa2a7e8e84c0673e3670"

    # https://www.anaconda.com/blog/intel-mac-package-support-deprecation
    deprecate! date: "2025-12-10", because: :discontinued
    disable! date: "2026-12-10", because: :discontinued
  end

  url "https://repo.anaconda.com/archive/Anaconda3-#{version}-MacOSX-#{arch}.sh"
  name "Anaconda Distribution"
  desc "Distribution of the Python and R programming languages for scientific computing"
  homepage "https://www.anaconda.com/"

  livecheck do
    url "https://repo.anaconda.com/archive/"
    regex(/href=.*?Anaconda3[._-]v?(\d+(?:[.-]\d+)+)[._-]MacOSX?[._-]#{arch}\.sh/i)
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
