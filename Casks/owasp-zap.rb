cask 'owasp-zap' do
  version '2.6.0'
  sha256 'ed8f58c07bee746439879649a3b13bd7bffbccd6b1163c335f5eb0711ec3563d'

  # github.com/zaproxy/zaproxy was verified as official when first introduced to the cask
  url "https://github.com/zaproxy/zaproxy/releases/download/#{version}/ZAP_#{version.dots_to_underscores}_macos.dmg"
  appcast 'https://github.com/zaproxy/zaproxy/releases.atom',
          checkpoint: 'ea8d9d2157f2b03f69b7a17a86e2bcd078af3981167bba5eaa95fdfe8c7ca769'
  name 'OWASP Zed Attack Proxy'
  name 'ZAP'
  homepage 'https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project'

  installer script: {
                      executable: 'OWASP Zed Attack Proxy Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: "/Applications/ZAP #{version}.app/OWASP Zed Attack Proxy Uninstaller.app/Contents/MacOS/JavaApplicationStub",
                      args:       %w[-q -c],
                      sudo:       true,
                    },
            delete: "/Applications/ZAP #{version}.app"

  zap delete: [
                '~/Library/Preferences/org.zaproxy.zap.plist',
                '~/Library/Application Support/ZAP',
              ]

  caveats do
    depends_on_java('7+')
  end
end
