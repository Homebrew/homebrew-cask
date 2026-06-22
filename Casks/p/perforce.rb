cask "perforce" do
  arch arm: "12arm64", intel: "1015x86_64"

  version "2026.1,2972966"
  sha256 arm:   "173be6c67c605add6e5d6e4228e4ab3e33b249a6bd35306054439c8f0926bd54",
         intel: "12a81063ebf3ce37b36388bd116a7f5a12bce4c984b0977380d59127b8a06ab1"

  url "https://filehost.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx#{arch}/helix-core-server.tgz"
  name "Perforce Helix Core Server"
  name "Perforce Helix Command-Line Client (P4)"
  name "Perforce Helix Broker (P4Broker)"
  name "Perforce Helix Versioning Engine (P4D)"
  name "Perforce Helix Proxy (P4P)"
  desc "Version control"
  homepage "https://www.perforce.com/"

  livecheck do
    url "https://www.perforce.com/perforce/doc.current/user/relnotes.txt"
    regex(%r{\((\d+(?:\.\d+)+)/(\d+)\)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: "p4"
  depends_on :macos

  binary "p4"
  binary "p4broker"
  binary "p4d"
  binary "p4p"

  # No zap stanza required

  caveats <<~EOS
    Instructions on using the Helix Versioning Engine are available in

      #{staged_path}
  EOS
end
