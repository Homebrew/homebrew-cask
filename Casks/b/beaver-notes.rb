cask "beaver-notes" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "-universal.dmg", linux: "#{arch}.AppImage"
  name_start = on_system_conditional macos: "Beaver-notes", linux: "Beaver-Notes"

  version "4.4.0"

  on_macos do
    sha256 "c2b83192c2b25542e8c8d5ffcaa4152e0175208de1d5caefa83095c6fd064f43"

    depends_on macos: :monterey

    app "Beaver Notes.app"

    zap trash: [
      "~/Library/Caches/com.danielerolli.beaver-notes",
      "~/Library/Preferences/com.danielerolli.beaver-notes.plist",
      "~/Library/Saved Application State/com.danielerolli.beaver-notes.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "ed729c63e9ef6f8fcd3919626d37119f4abfcd131958c25140ab3d169d9e54f3",
           x86_64_linux: "55aec4f6a5ca57f8c2ee805c8bddfdffab8ae1f23ec9e7269c62794ae37c775f"

    app_image "Beaver-Notes-#{version}#{arch}.AppImage", target: "Beaver Notes.AppImage"
  end

  url "https://github.com/Beaver-Notes/Beaver-Notes/releases/download/#{version}/#{name_start}-#{version}#{url_end}"
  name "Beaver Notes"
  desc "Privacy-focused note-taking app"
  homepage "https://beavernotes.com/"
end
