cask "peazip" do
  arch arm: "aarch64", intel: "x86_64"

  version "9.4.0"
  sha256 arm:   "9f1c361273fd2beda788a6b83a76186940bcbb9c2292bc9e1865603b9b50a28c",
         intel: "0892e81c36b643a76cf6fbea5f767bbbe395cd11a58beff9a34d2be437b2f88b"

  url "https://github.com/peazip/PeaZip/releases/download/#{version}/peazip-#{version}.DARWIN.#{arch}.dmg"
  name "Peazip"
  desc "Free Zip/Unzip software and Rar file extractor"
  homepage "https://github.com/peazip/PeaZip"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "PeaZip.app"

  postflight do
    system_command "/usr/bin/open", args: ["#{staged_path}/macOS service menus/PeaZip, add to archive.workflow"]
    system_command "/usr/bin/open",
                   args: ["#{staged_path}/macOS service menus/PeaZip, extract here (smart new folder).workflow"]
    system_command "/usr/bin/open", args: ["#{staged_path}/macOS service menus/PeaZip, extract....workflow"]
    system_command "/usr/bin/open", args: ["#{staged_path}/macOS service menus/PeaZip, open file or folder.workflow"]
  end

  zap trash: [
    "~/Library/Preferences/com.company.peazip.plist",
    "~/Library/Saved Application State/com.company.peazip.savedState",
  ]
end
