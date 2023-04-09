cask "openshift-client" do
  arch arm: "-arm64"

  version "4.12.11"
  sha256 arm:   "bfcd4f8b0aaef082fb5244dd19676bd2d4429820d26f970f9ef55356871d2017",
         intel: "184837080d46a72f03c09d6e6015bc3a7d1eadfad7518b03814ed4df21f3c5e4"

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
