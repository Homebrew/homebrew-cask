cask "anaconda" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "2022.05"

  if Hardware::CPU.intel?
    sha256 "1a10c06660ebe1204e538b4e9d810142441af9dfd74b077eee2761ec6e675f39"
  else
    sha256 "a12119931945a9a1453993582259cc67318a9a75a15731e5ccc15365e7f88a36"
  end

  url "https://repo.anaconda.com/archive/Anaconda3-#{version}-MacOSX-#{arch}.sh"
  name "Continuum Analytics Anaconda"
  desc "Distribution of the Python and R programming languages for scientific computing"
  homepage "https://www.anaconda.com/"

  livecheck do
    url "https://repo.anaconda.com/archive/"
    regex(/Anaconda3-(\d+(?:\.\d+)+)-MacOSX-#{arch}\.sh/i)
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
