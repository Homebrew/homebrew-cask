cask "intel-haxm" do
  version "7.7.1"
  sha256 "b936f7247d1962d945d764a7cf2b698f71a98335ceda0848109fd947adbb2ec2"

  url "https://github.com/intel/haxm/releases/download/v#{version}/haxm-macosx_v#{version.dots_to_underscores}.zip"
  name "Intel HAXM"
  desc "Hardware-assisted virtualization engine (hypervisor)"
  homepage "https://github.com/intel/haxm"

  depends_on macos: ">= :yosemite"
  depends_on arch: :x86_64

  installer script: {
    executable: "silent_install.sh",
    sudo:       true,
  }

  uninstall pkgutil: "com.intel.kext.haxm.*",
            script:  {
              sudo:         true,
              must_succeed: true,
              executable:   "silent_install.sh",
              args:         ["-u"],
            }

  caveats do
    kext
  end
end
