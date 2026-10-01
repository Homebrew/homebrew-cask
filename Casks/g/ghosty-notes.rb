cask "ghosty-notes" do
  version "0.2.9"
  sha256 "a3539280b607d139faf1a4e6a1e60f695df15245c433e21d5459b18b2fec7c8e"

  url "https://github.com/liamdb3149/ghosty-notes-releases/releases/download/v#{version}/GhostyNotes-macOS-arm64.dmg"
  name "Ghosty Notes"
  desc "Local-first AI meeting note-taker that transcribes on device"
  homepage "https://ghostynotes.app/"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Ghosty Notes.app"

  caveats <<~EOS
    Ghosty Notes is Apple Silicon only and requires macOS 14 or later.

    The free tier is unlimited and needs no account. Ghosty Notes Pro is $5/month
    or $54/year and adds speaker identification, cloud calendar sync and hosted AI notes.
  EOS
end