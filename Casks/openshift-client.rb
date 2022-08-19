cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.1"

  on_intel do
    sha256 "7ddf8dcee068e91f1f67bed64b9a10b178a151ca8ba6b4dc76a06324f2fa51ce"
  end
  on_arm do
    sha256 "157d5f950353f43835ba4c4cc918bc9d90bd61715a370dac3875dfcc916d5f27"
  end

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
