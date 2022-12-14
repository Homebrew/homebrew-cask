cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.20"
  sha256 arm:   "03244b159af02443943f38a711985db1837367c2fe81c7938cfde08cb497b82e",
         intel: "e689c536616a36a5c790ee23bc7c838e44592c8b41f3cd664e84a7b236de5ed7"

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
