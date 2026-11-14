cask "soapui" do
  arch arm: "arm64", intel: "x64"

  version "5.10.0"
  sha256 arm:   "1b9cd5c8be2780e36343a6ed6aee443fa320d2fc19be7271ce13b782be01a099",
         intel: "825b20a857960d0a5668368626896da3388ba1a5b8d3c00927ac2df6fbe9b0d4"

  url "https://dl.eviware.com/soapuios/#{version}/SoapUI-#{arch}-#{version}.dmg"
  name "SmartBear SoapUI"
  desc "API testing tool"
  homepage "https://www.soapui.org/"

  livecheck do
    url "https://www.soapui.org/downloads/latest-release/"
    regex(%r{href=.*?/SoapUI[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on :macos

  app "SoapUI-#{version}.app", target: "SoapUI.app"

  # Run the first-launch setup wizard (install4j application 7981) unattended
  postflight_steps do
    run "SoapUI.app/Contents/Resources/jre.bundle/Contents/Home/bin/java",
        base: :appdir,
        args: [
          "-cp", "{{appdir}}/SoapUI.app/Contents/Resources/app/.install4j/i4jruntime.jar",
          "com.install4j.runtime.installer.Application", "7981",
          "-q", # Unattended mode
          "-VcreateDesktopLinkAction$Boolean=false", # Do not create a desktop icon
          "-Vsys.component.132$Boolean=true", # Install SoapUI
          "-Vsys.component.714$Boolean=false", # Do not install source
          "-Vsys.component.1263$Boolean=false", # Do not install HermesJMS
          "-Vsys.component.2393$Boolean=false", # Do not install tutorials
          "-VshowFileAction$Boolean=false", # Do not show release notes
          "-VexecutionLauncherAction$Boolean=false" # Do not launch SoapUI after installing
        ]
  end

  # SoapUI shows a confirmation dialog on quit
  uninstall signal: ["TERM", "com.install4j.5517-2803-0637-4585.7979"]

  zap trash: [
    "~/.soapuios",
    "~/default-soapui-workspace.xml",
    "~/Library/Application Support/SoapUI-*",
    "~/Library/Preferences/com.install4j.5517-2803-0637-4585.7979.plist",
    "~/soapui-settings.xml",
  ]
end
