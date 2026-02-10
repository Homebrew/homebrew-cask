cask "orange" do
  arch arm: "arm64", intel: "x86_64"

  version "3.40.0"
  sha256 arm:   "ff226be4cabf87442cc83168cad2341b673d2ee42e68536769c862c37a149ce3",
         intel: "6ac6715e128f335046ea26b5d71f50e7c9812a06111caa3488df0726adf518df"

  on_arm do
    app "Orange.app"
  end
  on_intel do
    app "Orange#{version.major}.app"
  end

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python3.12.10-#{arch}.dmg",
      verified: "download.biolab.si/download/"
  name "Orange"
  desc "Component-based data mining software"
  homepage "https://orangedatamining.com/"

  livecheck do
    url "https://orangedatamining.com/download/#macos"
    regex(/Orange#{version.major}[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :big_sur"

  zap trash: [
    "~/Library/Application Support/Orange",
    "~/Library/Caches/Orange",
    "~/Library/Logs/Orange",
    "~/Library/Saved Application State/si.biolab.orange.savedState",
  ]
end
