cask "prowritingaid" do
  version "2.0.56"
  sha256 "c455e6bf606bffd63fd18eb6c8d5abce3648773f1cf0256b1ed7ec3c8c65980e"

  url "https://cdn.prowritingaid.com/prowritingaid-desktop/desktop_#{version.dots_to_underscores}/ProWritingAid.dmg"
  name "ProWritingAid"
  desc "Grammar checker, style editor, and writing mentor"
  homepage "https://prowritingaid.com/"

  livecheck do
    skip "No version information available"
  end

  app "ProWritingAid.app"
end
