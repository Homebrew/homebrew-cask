cask "intel-haxm" do
  version "7.7.0"
  sha256 "d3fb74ca55e5312fc1c10b850c46689ac723572453c1bb3ed3f47680c7f504b7"

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
