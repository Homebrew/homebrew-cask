cask "beaver-notes" do
  arch arm: "-aarch64", intel: "-x86_64"
  url_end = on_system_conditional macos: "_universal.dmg", linux: "#{arch}.AppImage"
  name_start = on_system_conditional macos: "Beaver.Notes_", linux: "Beaver-Notes-"

  version "5.0.0"
  sha256 arm:          "eb467931d8873d19b949e85dddb81fcf58f628273fe85caf796dcd91eca37194",
         intel:        "eb467931d8873d19b949e85dddb81fcf58f628273fe85caf796dcd91eca37194",
         arm64_linux:  "76de775b7e4b6417b78119253826c51d98a5a9ae9eaf14ea44b0e4e8d17d2990",
         x86_64_linux: "d55f3e578aca4527b7e62c1130cd095add893da201de254f4d687d41312a4694"

  on_macos do
    depends_on macos: :monterey

    app "Beaver Notes.app"

    zap trash: [
      "~/Library/Caches/com.danielerolli.beaver-notes",
      "~/Library/Preferences/com.danielerolli.beaver-notes.plist",
      "~/Library/Saved Application State/com.danielerolli.beaver-notes.savedState",
    ]
  end
  on_linux do
    app_image "Beaver-Notes-#{version}#{arch}.AppImage", target: "Beaver Notes.AppImage"

    zap trash: "~/.config/Beaver Notes"
  end

  url "https://github.com/Beaver-Notes/Beaver-Notes/releases/download/v#{version}/#{name_start}#{version}#{url_end}"
  name "Beaver Notes"
  desc "Privacy-focused note-taking app"
  homepage "https://beavernotes.com/"
end
