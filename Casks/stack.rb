cask "stack" do
  version "2.6.4-20200908"
  sha256 "53f2e2fee658ba23105961771a1ab1b37e67a169b0f578fe4723900b730a7472"

  # transip.net/stack/ was verified as official when first introduced to the cask
  url "https://mirror.transip.net/stack/software/osx/stack-#{version}.pkg"
  appcast "https://mirror.transip.net/stack/update/?version=0.0.0&platform=macos&oem=stack&versionsuffix=&updatesegment=18&sparkle=true"
  name "STACK"
  desc "Personal online hard drive to store, view and share files"
  homepage "https://www.transip.nl/stack"

  pkg "stack-#{version}.pkg"

  uninstall login_item: "stack",
            signal:     ["TERM", "nl.transip.stack"],
            pkgutil:    "nl.transip.stack"

  zap trash: [
    "~/Library/Caches/nl.transip.stack",
    "~/Library/Application Support/STACK/",
  ]
end
