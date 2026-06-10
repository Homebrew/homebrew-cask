cask "microsoft-skype-for-business" do
  version "16.30.32"
  sha256 "81f484842e86a39c9f33abc4d35b4e7dbb87189ca3c424a6396e15d96ea2dbd5"

  url "https://res.public.onecdn.static.microsoft/mro1cdnstorage/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/SkypeForBusinessUpdater-#{version}.pkg",
      verified: "res.public.onecdn.static.microsoft/"
  name "Microsoft Skype for Business"
  desc "Enterprise instant messaging and online meeting client"
  homepage "https://learn.microsoft.com/en-us/skypeforbusiness/"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=832978"
    regex(/SkypeForBusinessUpdater-(\d+(?:\.\d+)+)\.pkg/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :catalina

  pkg "SkypeForBusinessUpdater-#{version}.pkg"

  uninstall pkgutil: "macosx"
end
