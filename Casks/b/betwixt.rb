cask "betwixt" do
  version "1.6.1"
  sha256 "a97f893e8bc7611dfde66ae75775a829c4d25959b946276aacf32cc8485c4054"

  url "https://github.com/kdzwinel/betwixt/releases/download/#{version}/Betwixt-darwin-x64.zip"
  name "Betwixt"
  desc "Web Debugging Proxy based on Chrome DevTools Network panel"
  homepage "https://github.com/kdzwinel/betwixt"

  app "Betwixt-darwin-x64/Betwixt.app"

  uninstall_postflight do
    cert = Pathname("~/Library/Application Support/betwixt/ssl/certs/ca.pem").expand_path
    next unless cert.exist?

    stdout, * = system_command "/usr/bin/openssl",
                               args: [
                                 "x509",
                                 "-fingerprint", "-sha256",
                                 "-noout",
                                 "-in", cert
                               ]
    hash = stdout.lines.first.split("=").second.delete(":").strip
    stdout, * = system_command "/usr/bin/security",
                               args: ["find-certificate", "-a", "-c", "NodeMITMProxyCA", "-Z"],
                               sudo: true
    hashes = stdout.lines.grep(/^SHA-256 hash:/) { |l| l.split(":").second.strip }
    if hashes.include?(hash)
      system_command "/usr/bin/security",
                     args: ["delete-certificate", "-Z", hash],
                     sudo: true
    end
  end

  zap trash: [
    "~/Library/Application Support/betwixt",
    "~/Library/Caches/betwixt",
    "~/Library/Preferences/com.electron.betwixt.plist",
    "~/Library/Saved Application State/com.electron.betwixt.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
