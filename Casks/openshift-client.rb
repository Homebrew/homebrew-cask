cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.3"
  sha256 arm:   "2553f8f6f67eb3d3f15b16856d70cd0e89bb1a54cb99181b65456ef6deb456f3",
         intel: "07a9ecaaf2fdc582741faf04814e461f8080d5a78b715c839a2997b73bae1543"

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
