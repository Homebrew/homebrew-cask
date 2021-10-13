cask "mailtrackerblocker" do
  version "0.4.13"
  sha256 "e4680392906beb67e151b9b75ec9fff9da04ebdf072a49aa9b72355a2ad1aa33"

  url "https://github.com/apparition47/MailTrackerBlocker/releases/download/#{version}/MailTrackerBlocker.pkg",
      verified: "github.com/apparition47/MailTrackerBlocker/"
  name "MailTrackerBlocker"
  desc "Email tracker, read receipt and spy pixel blocker plugin for Apple Mail"
  homepage "https://apparition47.github.io/MailTrackerBlocker/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  pkg "MailTrackerBlocker.pkg"

  uninstall_postflight do
    if system_command("ps", args: ["x"]).stdout.match?("Mail.app/Contents/MacOS/Mail")
      opoo "Restart Mail.app to finish uninstalling #{token}"
    end
  end

  uninstall pkgutil: "com.onefatgiraffe.mailtrackerblocker",
            delete:  "/Library/Mail/Bundles/MailTrackerBlocker.mailbundle"

  zap trash: [
    "~/Library/Containers/com.apple.mail/Data/Library/Application Support/com.onefatgiraffe.mailtrackerblocker",
  ]
end
