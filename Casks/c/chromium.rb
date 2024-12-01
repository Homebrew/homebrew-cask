# typed: strict
# frozen_string_literal: true

cask "chromium" do
  arch arm: "Mac_Arm", intel: "Mac"

  version :latest
  sha256 :no_check

  url "https://download-chromium.appspot.com/dl/#{arch}?type=snapshots",
      verified: "download-chromium.appspot.com/dl/"
  name "Chromium"
  desc "Free and open-source web browser"
  homepage "https://www.chromium.org/Home"

  conflicts_with cask: [
    "eloston-chromium",
    "freesmug-chromium",
  ]
  depends_on macos: ">= :big_sur"

  app "chrome-mac/Chromium.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/chromium.wrapper.sh"
  binary shimscript, target: "chromium"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Chromium.app/Contents/MacOS/Chromium' "$@"
    EOS
  end

  postflight do
    dict = {
      "LSEnvironment.GOOGLE_API_KEY"               => "AIzaSyCkfPOPZXDKNn8hhgu3JrA62wIgC93d44k",
      "LSEnvironment.GOOGLE_DEFAULT_CLIENT_ID"     => "811574891467.apps.googleusercontent.com",
      "LSEnvironment.GOOGLE_DEFAULT_CLIENT_SECRET" => "kdloedMFGdGla2P1zacGjAQh",
    }

    plist = "#{appdir}/Chromium.app/Contents/Info.plist"

    dict.each do |key, val|
      system("plutil -replace #{key} -string '#{val}' #{plist}")
    end
  end

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
