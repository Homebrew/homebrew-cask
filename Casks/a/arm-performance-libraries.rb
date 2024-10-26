cask "arm-performance-libraries" do
  version "24.10"
  install_suffix="#{version}_flang-new_clang_19"
  sha256 "04e794409867e6042ed0f487bbaf47cc6edd527dc6ddad67160f1dba83906969"

  url "https://developer.arm.com/-/cdn-downloads/permalink/Arm-Performance-Libraries/Version_#{version}/arm-performance-libraries_#{version}_macOS.tgz"
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
