cask "texstudio" do
  version "4.8.7"

  on_ventura :or_older do
    sha256 "4f325c3bf10e0f63e8b4fb46d5c2a7362060dbfbae63148af49ae337b780f752"

    caveats do
      requires_rosetta
    end
  end
  on_sonoma :or_newer do
    arch arm: "-m1"

    sha256 arm:   "73c7195d4ae56bf1b5757012cff3b87ccce885c427c1233c2d584b641172a023",
           intel: "4f325c3bf10e0f63e8b4fb46d5c2a7362060dbfbae63148af49ae337b780f752"
  end

  url "https://github.com/texstudio-org/texstudio/releases/download/#{version}/texstudio-#{version}-osx#{arch}.zip",
      verified: "github.com/texstudio-org/texstudio/"
  name "TeXstudio"
  desc "LaTeX editor"
  homepage "https://texstudio.org/"

  depends_on macos: ">= :big_sur"

  app "texstudio-#{version}-osx#{arch}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texstudio.sfl*",
    "~/Library/Preferences/texstudio.plist",
    "~/Library/Saved Application State/texstudio.savedState",
  ]
end
