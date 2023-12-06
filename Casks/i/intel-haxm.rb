cask "intel-haxm" do
  version "7.8.0"
  sha256 "44059b3ad33de87562ecd7a6c5a003dce96aa51506667752601467af7b328c29"

  url "https://github.com/intel/haxm/releases/download/v#{version}/haxm-macosx_v#{version.dots_to_underscores}.zip"
  name "Intel HAXM"
  desc "Hardware-assisted virtualization engine (hypervisor)"
  homepage "https://github.com/intel/haxm"

  depends_on macos: ">= :sierra"
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
    discontinued
    kext
  end
end
