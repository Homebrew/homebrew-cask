cask "anaconda" do
  arch arm: "arm64", intel: "x86_64"

  version "2023.03-1"
  sha256 arm:   "d22ab7a22ab4ba3c02d6fe4e9c2a9c673ff34b80442922e4e49663287f6ace3f",
         intel: "561ea77b7172e15568d21b854c4de4178789ca59caca16af9a6449653bfd9a21"

  url "https://repo.anaconda.com/archive/Anaconda3-#{version}-MacOSX-#{arch}.pkg"
  name "Continuum Analytics Anaconda"
  desc "Distribution of the Python and R programming languages for scientific computing"
  homepage "https://www.anaconda.com/"

  livecheck do
    url "https://repo.anaconda.com/archive/"
    regex(/Anaconda3-(\d+(?:\.\d+)+[._-]*\d+)-MacOSX-#{arch}\.sh/i)
  end

  auto_updates true

  pkg "Anaconda3-#{version}-MacOSX-#{arch}.pkg"

  uninstall pkgutil: [
    "com.anaconda.io",
    "com.anaconda.AnacondaCloudPlugin",
  ]

  # uninstall delete: [
  #   "#{HOMEBREW_PREFIX}/anaconda3",
  #   "/Applications/Anaconda-Navigator.app",
  # ]

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
