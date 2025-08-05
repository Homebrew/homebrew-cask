cask "arm-performance-libraries" do
  version "25.07"
  install_suffix="#{version}_flang-20"
  sha256 "c153c5a75b0b8eba4a22b24a212b8223c89ce5b8f8efca457fbbcd78d040bf83"

  url "https://developer.arm.com/-/cdn-downloads/permalink/Arm-Performance-Libraries/Version_#{version}/arm-performance-libraries_#{version.major_minor}_macOS.tgz"
  name "Arm Performance Libraries"
  desc "Optimized standard core math libraries for Arm processors"
  homepage "https://developer.arm.com/downloads/-/arm-performance-libraries"

  livecheck do
    url :homepage
    regex(/Version[._-]v?(\d+(?:\.\d+)+)/i)
  end

  depends_on arch: :arm64

  installer script: {
    executable: "armpl_#{install_suffix}_install.sh",
    args:       ["-y"],
    sudo:       true,
  }

  uninstall delete: [
              "/opt/arm/arm-performance-libraries_#{install_suffix}",
              "/opt/arm/armpl_#{install_suffix}",
            ],
            rmdir:  "/opt/arm"

  # No zap stanza required

  caveats do
    license "https://developer.arm.com/documentation/109686/latest"
    "You may need to source /opt/arm/armpl_#{install_suffix}/armpl_env_vars.sh in order to use these libraries."
  end
end
